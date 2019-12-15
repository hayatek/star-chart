from django.conf import settings

def get_tracking_id(request):
    google_tracking_id = getattr(settings, 'GOOGLE_ANALYTICS_KEY', False)

    if not settings.DEBUG and google_tracking_id:
        return {
            'GOOGLE_ANALYTICS_KEY': google_tracking_id,
        }
    return {}
