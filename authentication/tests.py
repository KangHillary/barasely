from django.test import TestCase
from . views import ongeza
# Create your tests here.

class PrivateTes(TestCase):

    def test_ongeza(self):
        x = ongeza(2,8)
        self.assertEqual(x, 10)
