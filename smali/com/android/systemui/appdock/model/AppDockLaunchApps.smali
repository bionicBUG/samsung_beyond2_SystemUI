.class public Lcom/android/systemui/appdock/model/AppDockLaunchApps;
.super Ljava/util/LinkedList;
.source "AppDockLaunchApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field COMPARATOR_TIME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRestored:Z

.field private mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mIsRestored:Z

    .line 203
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$1;-><init>(Lcom/android/systemui/appdock/model/AppDockLaunchApps;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->COMPARATOR_TIME:Ljava/util/Comparator;

    .line 24
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    return-void
.end method

.method private loadSavedList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->getAllMap()Ljava/util/Map;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 97
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 98
    new-instance v6, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7, v4, v5}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 101
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->COMPARATOR_TIME:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x6

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->restoreLegacyIfNeeded(Ljava/util/List;Ljava/util/List;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->getListWithoutDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "savedList size=%d"

    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private replacePref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "remove key=%s, add key=%s"

    .line 163
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->get(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {v2, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->remove(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->add(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->add(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 4

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 35
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->remove(I)Ljava/lang/String;

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->add(Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public getAppInfos(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isBlackList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->clone()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getListWithoutDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    .line 146
    invoke-virtual {v2, v0}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->isEqualkey(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 152
    iget-object v5, v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "info=%s, isExist=%b"

    invoke-static {v3, v2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    .line 154
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public isRestored()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mIsRestored:Z

    return p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->remove(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->remove(Ljava/lang/String;)V

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->remove(Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public restore(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->isRestored()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mPref:Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockLaunchAppsPref;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockPresetParser;

    invoke-direct {v0}, Lcom/android/systemui/appdock/model/AppDockPresetParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/model/AppDockPresetParser;->parseXMLData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/model/AppDockPreset;

    .line 69
    invoke-virtual {v3}, Lcom/android/systemui/appdock/model/AppDockPreset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/appdock/model/AppDockPreset;->getActivityName()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v4, v3, v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makeKeyAsString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v5, "preset key=%s"

    .line 70
    invoke-static {v5, v4}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 72
    invoke-virtual {v5}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->add(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->loadSavedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_1
    if-ltz p2, :cond_4

    .line 82
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    iget-object v4, v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-wide v4, v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "key=%s, time=%d"

    invoke-static {v4, v3}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string/jumbo p2, "size=%d"

    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput-boolean v2, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->mIsRestored:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public restoreLegacyIfNeeded(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 120
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 121
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    .line 122
    iget-object v6, v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 123
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 124
    iget-object v8, v7, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v9, v7, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-static {v8, v9}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makeLegacyKeyAsString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 127
    iget-object v9, v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {v7}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 129
    iget-object v9, v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    aput-object v9, v8, v2

    aput-object v7, v8, v5

    const-string v9, "restore %s -> %s"

    invoke-static {v9, v8}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v8, v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->replacePref(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object v7, v4, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v5, [Ljava/lang/Object;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v2

    const-string/jumbo p1, "time=%d"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
