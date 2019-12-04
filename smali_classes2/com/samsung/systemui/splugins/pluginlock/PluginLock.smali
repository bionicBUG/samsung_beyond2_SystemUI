.class public interface abstract Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
.super Ljava/lang/Object;
.source "PluginLock.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCK"
    version = 0xbb8
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCK"

.field public static final ACTION_BACK_KEY:Ljava/lang/String; = "action_back_key"

.field public static final ACTION_DATA_CLEAR:Ljava/lang/String; = "action_data_clear"

.field public static final ALLOWED_NUMBER_BASE_BASIC:I = 0xa

.field public static final ALLOWED_NUMBER_BASE_DYNAMIC:I = 0x2710

.field public static final DYNAMIC_LOCK_MODE:I = 0x2

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final LOCK_STAR_MODE:I = 0x1

.field public static final MAJOR_VERSION:I = 0x1e

.field public static final MINOR_VERSION:I = 0x0

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_OVERLAY_VIEW:I = 0x1

.field public static final NON_SWIPE_MODE_ANGLE:I = 0x2d

.field public static final NON_SWIPE_MODE_DOWN:I = 0x8

.field public static final NON_SWIPE_MODE_LEFT:I = 0x1

.field public static final NON_SWIPE_MODE_LONG_TAP:I = 0x20

.field public static final NON_SWIPE_MODE_NONE:I = 0x0

.field public static final NON_SWIPE_MODE_RIGHT:I = 0x2

.field public static final NON_SWIPE_MODE_TAP:I = 0x10

.field public static final NON_SWIPE_MODE_UP:I = 0x4

.field public static final ORIGIN_DLS:I = 0x0

.field public static final ORIGIN_LOCK_STAR:I = 0x1

.field public static final TYPE_BLOCK_CAPTURE_LONG_TOUCH:I = 0x2

.field public static final TYPE_BLOCK_CAPTURE_NONE:I = 0x0

.field public static final TYPE_BLOCK_CAPTURE_SYSTEM_UI:I = 0x1

.field public static final TYPE_NOTIFICATION_CARD:I = 0x1

.field public static final TYPE_NOTIFICATION_DEFAULT:I = 0x0

.field public static final TYPE_NOTIFICATION_ICONS_ONLY:I = 0x2

.field public static final TYPE_RECOVER_BASIC:I = 0x1

.field public static final TYPE_RECOVER_STICKY:I = 0x2

.field public static final TYPE_UPDATE_STYLE_FADE:I = 0x0

.field public static final TYPE_UPDATE_STYLE_NO_EFFECT:I = 0x1

.field public static final TYPE_WALLPAPER_CURRENT:I = -0x2

.field public static final TYPE_WALLPAPER_IMAGE:I = 0x1

.field public static final TYPE_WALLPAPER_SOURCE_PATH:I = 0x0

.field public static final TYPE_WALLPAPER_SOURCE_RES_ID:I = 0x1

.field public static final TYPE_WALLPAPER_VIDEO:I = 0x2

.field public static final VERSION:I = 0xbb8

.field public static final VERSION_SUPPORT_MULTIPLE:I = 0x44c


# virtual methods
.method public abstract getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;
.end method

.method public abstract getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;
.end method
