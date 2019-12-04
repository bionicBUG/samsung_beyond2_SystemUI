.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/appdock/model/AppDockItemInfo;Lcom/android/systemui/appdock/model/AppDockItemInfo;)I
    .locals 0

    .line 105
    iget-object p0, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p2, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 106
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    check-cast p2, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;->compare(Lcom/android/systemui/appdock/model/AppDockItemInfo;Lcom/android/systemui/appdock/model/AppDockItemInfo;)I

    move-result p0

    return p0
.end method
