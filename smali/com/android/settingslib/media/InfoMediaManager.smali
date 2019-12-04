.class public Lcom/android/settingslib/media/InfoMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "InfoMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
    }
.end annotation


# instance fields
.field mMediaRouter:Landroidx/mediarouter/media/MediaRouter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSelector:Landroidx/mediarouter/media/MediaRouteSelector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# virtual methods
.method getControlCategoryByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "com.google.android.gms.cast.CATEGORY_CAST/4F8B3483"

    return-object p0
.end method
