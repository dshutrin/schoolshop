from django import forms


class MainSearchForm(forms.Form):
	def __init__(self, *args, **kwargs):
		super().__init__(*args, **kwargs)
		for visible in self.visible_fields():
			visible.field.widget.attrs['class'] = 'form-control text-center'
		self.fields['query'].widget.attrs['placeholder'] = 'Search'
		self.fields['query'].widget.attrs['oninput'] = 'get_search()'

	query = forms.CharField(max_length=1000)
