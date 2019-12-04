.class Lcom/android/systemui/doze/AODParameters$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AODParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AODParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/AODParameters;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AODParameters;Landroid/os/Handler;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    .line 49
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/AODParameters$SettingsObserver;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->updateDozeAlwaysOn()V

    return-void
.end method

.method private isAODScheduleEnabled()Z
    .locals 5

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "aod_mode_start_time"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {p0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "aod_mode_end_time"

    invoke-static {p0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v2, 0x1

    if-ge v0, p0, :cond_0

    if-lt v1, v0, :cond_1

    if-ge v1, p0, :cond_1

    return v2

    :cond_0
    if-ge v1, v0, :cond_2

    if-ge v1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v2
.end method

.method private updateDozeAlwaysOn()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "aod_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 69
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v4}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aod_tap_to_show_mode"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 70
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v5}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aod_show_state"

    invoke-static {v6, v7, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-static {v5, v1}, Lcom/android/systemui/doze/AODParameters;->access$202(Lcom/android/systemui/doze/AODParameters;Z)Z

    if-nez v0, :cond_3

    .line 72
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_3

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->isAODScheduleEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_3

    .line 79
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    iput-boolean v2, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    :goto_3
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    iget-object v1, v0, Lcom/android/systemui/doze/AODParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/AODParameters;->access$102(Lcom/android/systemui/doze/AODParameters;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_tap_to_show_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode_start_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode_end_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->this$0:Lcom/android/systemui/doze/AODParameters;

    invoke-static {v0}, Lcom/android/systemui/doze/AODParameters;->access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->updateDozeAlwaysOn()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->updateDozeAlwaysOn()V

    return-void
.end method
