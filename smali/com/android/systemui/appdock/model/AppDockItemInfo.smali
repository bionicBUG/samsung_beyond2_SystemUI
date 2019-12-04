.class public Lcom/android/systemui/appdock/model/AppDockItemInfo;
.super Ljava/lang/Object;
.source "AppDockItemInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;
    }
.end annotation


# static fields
.field public static MULTI_INSTANCE_META_DATA:Ljava/lang/String; = "com.samsung.android.multiwindow.activity.alias.targetactivity"


# instance fields
.field public mAppVHType:I
    .annotation build Lcom/android/systemui/appdock/model/AppDockTypes$AppVHType;
    .end annotation
.end field

.field public mBaseVHType:I
    .annotation build Lcom/android/systemui/appdock/model/AppDockTypes$BaseVHType;
    .end annotation
.end field

.field mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mComponentName:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mDisabled:Z

.field public mHeaderTitle:Ljava/lang/String;

.field protected mIsBlackList:Z

.field protected mIsSupportMultiInstance:Z

.field public mKey:Ljava/lang/String;

.field public mPackageKey:Ljava/lang/String;

.field public mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public mTitle:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/systemui/appdock/model/AppDockTypes$BaseVHType;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    .line 57
    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    .line 76
    iput p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    .line 57
    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isSupportMultiInstance(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    .line 70
    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getUserId(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    .line 71
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getUserId(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makeKeyAsString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mKey:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getUserId(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makePackageKeyAsString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mPackageKey:Ljava/lang/String;

    return-void
.end method

.method public static getUserId(Landroid/content/pm/ResolveInfo;)I
    .locals 1

    .line 88
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result p0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static makeKeyAsString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeLegacyKeyAsString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makePackageKeyAsString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .locals 1

    .line 232
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->clone()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageKey()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mPackageKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isBlackList()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsBlackList:Z

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mDisabled:Z

    return p0
.end method

.method public isSupportMultiInstance()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsSupportMultiInstance:Z

    return p0
.end method

.method protected final isSupportMultiInstance(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 172
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 174
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->MULTI_INSTANCE_META_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 164
    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;

    .line 144
    invoke-interface {v0, p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;->onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAppVHType(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mDisabled:Z

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method

.method public setIsBlackList(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mIsBlackList:Z

    return-void
.end method
