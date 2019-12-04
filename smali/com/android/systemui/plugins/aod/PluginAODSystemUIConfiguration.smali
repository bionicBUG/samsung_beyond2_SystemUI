.class public Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;
.super Ljava/lang/Object;
.source "PluginAODSystemUIConfiguration.java"


# static fields
.field public static final KEY_EMERGENCY_MODE:I = 0x1

.field public static final KEY_FOLDER_CLOSED:I = 0x3

.field public static final KEY_OCCLUDED_STATE:I = 0x5

.field public static final KEY_PHONE_STATE:I = 0x2

.field public static final KEY_UNLOCKED_STATE:I = 0x4


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public get(II)I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 35
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 36
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 38
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 55
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 56
    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 58
    :cond_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(IZ)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 46
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 48
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public set(II)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public set(ILjava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public set(IZ)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->mData:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
