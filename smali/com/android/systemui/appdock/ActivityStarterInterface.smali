.class public interface abstract Lcom/android/systemui/appdock/ActivityStarterInterface;
.super Ljava/lang/Object;
.source "ActivityStarterInterface.java"


# virtual methods
.method public abstract getStartingWindowingModeFromClickEvent(Landroid/content/Context;)I
.end method

.method public makeItemInfoIntent(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Landroid/content/Intent;
    .locals 1

    .line 33
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.youtube"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10200000

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public saLogging(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V
    .locals 7

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x5

    if-ne p3, p0, :cond_0

    .line 52
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    .line 54
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    int-to-long p2, p2

    const-string p4, "1073"

    .line 52
    invoke-static {p0, p4, p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    .line 59
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v3, p0

    int-to-long v5, p4

    const-string v1, "1071"

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract startApp(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V
.end method
