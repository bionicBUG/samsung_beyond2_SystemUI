.class public interface abstract Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.super Ljava/lang/Object;
.source "SemAutoEnhanceCMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$TagFlags;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMomentColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoryTagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISummaryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IEventContactColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoriesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayAndMonthColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMonthClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICategoryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$VideoColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ImageColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ITagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IKeyFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPersonsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IUserTagsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IWeatherColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPOIColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICalendarEventColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ILocationColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISceneColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFilesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICommonColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BEST_PHOTO_URI:Landroid/net/Uri;

.field public static final CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

.field public static final CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final CLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAY_MONTH_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_TABLE_URI:Landroid/net/Uri;

.field public static final FILES_TABLE_URI:Landroid/net/Uri;

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final KEY_FACES_TABLE_URI:Landroid/net/Uri;

.field public static final LOCATION_TABLE_URI:Landroid/net/Uri;

.field public static final MOMENT_TABLE_URI:Landroid/net/Uri;

.field public static final MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final PERSONS_TABLE_URI:Landroid/net/Uri;

.field public static final POI_TABLE_URI:Landroid/net/Uri;

.field public static final SCENE_TABLE_URI:Landroid/net/Uri;

.field public static final SHOT_TABLE_URI:Landroid/net/Uri;

.field public static final SMARTCROP_VIEW_URI:Landroid/net/Uri;

.field public static final STORY_TABLE_URI:Landroid/net/Uri;

.field public static final STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

.field public static final SUMMARY_TABLE_URI:Landroid/net/Uri;

.field public static final TABLEONE_VIEW_URI:Landroid/net/Uri;

.field public static final TAG_VIEW_URI:Landroid/net/Uri;

.field public static final TIMELINE_VIEW_URI:Landroid/net/Uri;

.field public static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final WEATHER_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.cmh"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    .line 59
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "files"

    .line 60
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usertag"

    .line 63
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "calendarevent"

    .line 66
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "scene"

    .line 69
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "location"

    .line 72
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "shotmode"

    .line 75
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SHOT_TABLE_URI:Landroid/net/Uri;

    .line 77
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "weather"

    .line 78
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->WEATHER_TABLE_URI:Landroid/net/Uri;

    .line 80
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "poi"

    .line 81
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->POI_TABLE_URI:Landroid/net/Uri;

    .line 83
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "category"

    .line 84
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_imagesview"

    .line 87
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_videosview"

    .line 90
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    .line 92
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "external/faces"

    .line 93
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    .line 95
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/persons"

    .line 96
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    .line 98
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "moment"

    .line 99
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MOMENT_TABLE_URI:Landroid/net/Uri;

    .line 101
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story"

    .line 102
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    .line 104
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "summary"

    .line 105
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SUMMARY_TABLE_URI:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "monthcluster"

    .line 108
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

    .line 110
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "event_contact"

    .line 111
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    .line 113
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story_tag_view"

    .line 114
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

    .line 116
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "cluster"

    .line 117
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CLUSTER_TABLE_URI:Landroid/net/Uri;

    .line 119
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dayMonth"

    .line 120
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAY_MONTH_TABLE_URI:Landroid/net/Uri;

    .line 122
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "daycluster"

    .line 123
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

    .line 125
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "timelineview"

    .line 126
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TIMELINE_VIEW_URI:Landroid/net/Uri;

    .line 128
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tagview"

    .line 129
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    .line 131
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/key_faces"

    .line 132
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->KEY_FACES_TABLE_URI:Landroid/net/Uri;

    .line 134
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "images"

    .line 135
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    .line 137
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "video"

    .line 138
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    .line 140
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smartcropview"

    .line 141
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    .line 144
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "table1"

    .line 145
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TABLEONE_VIEW_URI:Landroid/net/Uri;

    .line 147
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bestphoto"

    .line 148
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->BEST_PHOTO_URI:Landroid/net/Uri;

    return-void
.end method
