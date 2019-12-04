.class Lcom/android/systemui/appdock/model/AppDockLaunchApps$1;
.super Ljava/lang/Object;
.source "AppDockLaunchApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockLaunchApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockLaunchApps;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockLaunchApps;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockLaunchApps$1;->this$0:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)I
    .locals 0

    .line 205
    invoke-virtual {p1, p2}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;->compareTo(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 203
    check-cast p1, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    check-cast p2, Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockLaunchApps$1;->compare(Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;Lcom/android/systemui/appdock/model/AppDockLaunchApps$SavedItemInfo;)I

    move-result p0

    return p0
.end method
