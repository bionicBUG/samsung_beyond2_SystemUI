.class public Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;
.super Ljava/lang/Object;
.source "AppDockLaunchApps.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockLaunchApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedItemInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    .line 187
    iput-wide p2, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->time:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)I
    .locals 3

    .line 193
    iget-wide v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->time:J

    iget-wide p0, p1, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->time:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 181
    check-cast p1, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->compareTo(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)I

    move-result p0

    return p0
.end method

.method public isEqualkey(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)Z
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
