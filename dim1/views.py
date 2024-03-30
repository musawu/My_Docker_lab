from django.shortcuts import render


from .models import Students
# Create your views here.

def index(request):
    obj=Students.objects.all()
    context= {
        "obj":obj
    }


    return render(request,"index.html",context)
