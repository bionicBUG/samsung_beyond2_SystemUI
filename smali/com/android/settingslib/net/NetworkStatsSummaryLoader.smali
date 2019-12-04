.class public Lcom/android/settingslib/net/NetworkStatsSummaryLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnd:J

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mStart:J


# virtual methods
.method public loadInBackground()Landroid/app/usage/NetworkStats;
    .locals 6

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mStart:J

    iget-wide v4, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mEnd:J

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NetworkDetailLoader"

    const-string v1, "Exception querying network detail."

    .line 59
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->loadInBackground()Landroid/app/usage/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method protected onReset()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 73
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 51
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    .line 67
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
