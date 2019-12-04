.class public Lcom/android/systemui/statusbar/notification/NotificationColorSet;
.super Ljava/lang/Object;
.source "NotificationColorSet.java"


# static fields
.field public static final GUT_PKG_NAME:I

.field public static final GUT_TITLE:I

.field public static final NOTIFICATION_DIMMED_BG:I

.field public static final NOTIFICATION_NORMAL_BG:I

.field public static final SINGLELINE_TEXT:I

.field public static final SINGLELINE_TITLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/android/systemui/R$id;->notification_title:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->SINGLELINE_TITLE:I

    .line 67
    sget v0, Lcom/android/systemui/R$id;->notification_text:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->SINGLELINE_TEXT:I

    .line 68
    sget v0, Lcom/android/systemui/R$id;->backgroundNormal:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->NOTIFICATION_NORMAL_BG:I

    .line 69
    sget v0, Lcom/android/systemui/R$id;->backgroundDimmed:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->NOTIFICATION_DIMMED_BG:I

    .line 72
    sget v0, Lcom/android/systemui/R$id;->pkgname:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->GUT_PKG_NAME:I

    .line 73
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->GUT_TITLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
