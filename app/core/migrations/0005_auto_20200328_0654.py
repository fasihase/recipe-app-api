# Generated by Django 2.2.11 on 2020-03-28 06:54

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_recipe'),
    ]

    operations = [
        migrations.RenameField(
            model_name='recipe',
            old_name='Ingredient',
            new_name='ingredient',
        ),
    ]