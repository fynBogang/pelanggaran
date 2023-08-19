from django.contrib import admin
from django.urls import reverse
from django.utils.html import format_html

class CustomModelAdmin(admin.ModelAdmin):
    change_form_template = 'admin/custom_change_form.html'

    def change_view(self, request, object_id, form_url='', extra_context=None):
        extra_context = extra_context or {}
        extra_context['custom_link'] = self.get_custom_link(object_id)
        return super().change_view(request, object_id, form_url=form_url, extra_context=extra_context)

    def get_custom_link(self, object_id):
        # You can customize this method to return the desired custom link
        obj = self.get_object(object_id)
        custom_url = reverse('custom_view', args=[obj.id])
        return format_html('<a href="{}">Custom Link</a>', custom_url)
