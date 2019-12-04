.class public Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;
.super Ljava/lang/Object;
.source "KnoxCustomManagerWrapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void
.end method


# virtual methods
.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/util/PowerItemWrapper;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/custom/PowerItem;

    .line 71
    new-instance v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    invoke-direct {v2, v1}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;-><init>(Lcom/samsung/android/knox/custom/PowerItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result p0

    return p0
.end method

.method public isAllowedShowActions()Z
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerMenuLockedState()Z

    move-result p0

    return p0
.end method
