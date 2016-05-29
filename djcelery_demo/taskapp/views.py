from django.shortcuts import render
from taskapp.tasks import add, mul, xsum
# Create your views here.

def test(request):
    result = add.delay(5, 6)
    if result.ready():
        print result 
    context = {}
    context['result'] = result.get()
    return render(request, 'result.html', context)
    