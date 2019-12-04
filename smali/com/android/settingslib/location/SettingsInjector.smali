.class public Lcom/android/settingslib/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/SettingsInjector$Setting;,
        Lcom/android/settingslib/location/SettingsInjector$MessengerHandler;,
        Lcom/android/settingslib/location/SettingsInjector$StatusLoadingHandler;,
        Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic access$000(Lcom/android/settingslib/location/SettingsInjector;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/location/SettingsInjector;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
