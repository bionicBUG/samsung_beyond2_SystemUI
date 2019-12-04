.class public Lcom/android/systemui/appdock/model/AppDockPreset;
.super Ljava/lang/Object;
.source "AppDockPreset.java"


# instance fields
.field private activityName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->activityName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockPreset;->activityName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "preset={packageName=%s, activityName=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
