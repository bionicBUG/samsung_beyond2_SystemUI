.class public interface abstract Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;
.super Ljava/lang/Object;
.source "PluginQSColoring.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.coloring.PLUGIN_QSCOLORING"
    version = 0xbbb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.coloring.PLUGIN_QSCOLORING"

.field public static final COLORING_BACKGROUND:I = 0x0

.field public static final COLORING_BRIGHTNESS_BAR_ACTIVATED:I = 0x5

.field public static final COLORING_BRIGHTNESS_BAR_BACKGROUND:I = 0x6

.field public static final COLORING_INDEX_NOTI_BACKGROUND:I = 0x68

.field public static final COLORING_INDEX_NOTI_OPAQUE_BACKGROUND:I = 0x69

.field public static final COLORING_INDEX_NOTI_PRIMARY:I = 0x66

.field public static final COLORING_INDEX_NOTI_TEXT:I = 0x67

.field public static final COLORING_INDEX_NSSL_BACKGROUND:I = 0x65

.field public static final COLORING_INDEX_PANEL_SYSTEM_ICON:I = 0x1f

.field public static final COLORING_INDEX_PANEL_SYSTEM_ICON_BROTHER:I = 0x20

.field public static final COLORING_INDEX_QSTILE_OFF_ICON:I = 0x16

.field public static final COLORING_INDEX_QSTILE_OFF_ROUND_BG:I = 0x15

.field public static final COLORING_INDEX_QSTILE_ON_ICON:I = 0xc

.field public static final COLORING_INDEX_QSTILE_ON_ROUND_BG:I = 0xb

.field public static final COLORING_INDEX_QS_DETAIL_HEADER_VIEW:I = 0x33

.field public static final COLORING_INDEX_QS_DETAIL_HEADER_VIEW_OFF_BACKGROUND:I = 0x38

.field public static final COLORING_INDEX_QS_DETAIL_HEADER_VIEW_ON_BACKGROUND:I = 0x37

.field public static final COLORING_INDEX_QS_DETAIL_IMAGE_TINT:I = 0x36

.field public static final COLORING_INDEX_QS_DETAIL_SWITCH_THUMB:I = 0x34

.field public static final COLORING_INDEX_QS_DETAIL_SWITCH_TRACK:I = 0x35

.field public static final COLORING_INDEX_QS_HEADER_ICON_BADGE:I = 0x2a

.field public static final COLORING_INDEX_QS_HEADER_ICON_TINT:I = 0x29

.field public static final COLORING_QSTILE_ICON_OFF:I = 0x3

.field public static final COLORING_QSTILE_ICON_ON_DIM:I = 0x2

.field public static final COLORING_QSTILE_LABEL:I = 0x1

.field public static final COLORING_QS_HEADER_ICON:I = 0x4

.field public static final DB_NAME_NOTI_BACKGROUND:Ljava/lang/String; = "qs_coloring_notification_background_color"

.field public static final DB_NAME_NOTI_OPAQUE_BACKGROUND:Ljava/lang/String; = "qs_coloring_notification_background_opaque_color"

.field public static final DB_NAME_NOTI_PRIMARY:Ljava/lang/String; = "qs_coloring_notification_primary_color"

.field public static final DB_NAME_NOTI_TEXT:Ljava/lang/String; = "qs_coloring_notification_text_color"

.field public static final DB_NAME_NSSL_BACKGROUND:Ljava/lang/String; = "qs_coloring_nssl_background_color"

.field public static final DB_NAME_QUICKSTAR_COLORING_NOTIFICATION_SWITCH:Ljava/lang/String; = "quickstar_coloring_notification_switch"

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION:I = 0x3

.field public static final VERSION:I = 0xbbb


# virtual methods
.method public abstract getQSColoringBackgroundAlpha()I
.end method

.method public abstract getQSColoringBlurEffectAmount()F
.end method

.method public abstract getQSColoringColor(I)I
.end method

.method public abstract getQSColoringDimEffectAmount()F
.end method

.method public abstract isNotificationColoringEnabled()Z
.end method

.method public abstract isQSColoringBlurEffectEnabled()Z
.end method

.method public abstract isQSColoringDimEffectEnabled()Z
.end method

.method public abstract isQSColoringEnabled()Z
.end method

.method public abstract isUserPreferOpenTheme()Z
.end method

.method public abstract onPluginConfigurationChanged()V
.end method

.method public abstract onPluginConnected()V
.end method

.method public abstract onPluginDisconnected()V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V
.end method
