from datetime import datetime, timedelta, timezone
from aws_xray_sdk.core import xray_recorder
class NotificationsActivities:
  def run():
    now = datetime.now(timezone.utc).astimezone()
    # Xray - start segment
    segment = xray_recorder.begin_segment('NotificationActivities')
    dictxray = {
      "now"        : now.isoformat()
    }
    # Xray - put data
    segment.put_metadata('key',dictxray, 'namespace')
    subsegment = xray_recorder.begin_subsegment('NotificationActivitiesSubsegment')
    subsegment.put_annotation('MyKey','Annotation Value')
    results = [{
      'uuid': '68f126b0-1ceb-4a33-88be-d90fa7109eee',
      'handle':  'coco',
      'message': 'I am white unicorn',
      'created_at': (now - timedelta(days=2)).isoformat(),
      'expires_at': (now + timedelta(days=5)).isoformat(),
      'likes_count': 5,
      'replies_count': 1,
      'reposts_count': 0,
      'replies': [{
        'uuid': '26e12864-1c26-5c3a-9658-97a10f8fea67',
        'reply_to_activity_uuid': '68f126b0-1ceb-4a33-88be-d90fa7109eee',
        'handle':  'worf',
        'message': 'this post has no honor!',
        'likes_count': 0,
        'replies_count': 0,
        'reposts_count': 0,
        'created_at': (now - timedelta(days=2)).isoformat()
      }],
    }
    ]
    xray_recorder.end_subsegment()
    xray_recorder.end_segment()
    return results
