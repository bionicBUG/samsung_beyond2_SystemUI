.class public Lcom/android/systemui/globalactions/util/KioskModeWrapper;
.super Ljava/lang/Object;
.source "KioskModeWrapper.java"


# instance fields
.field mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    return-void
.end method


# virtual methods
.method public isKioskMode()Z
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result p0

    return p0
.end method
