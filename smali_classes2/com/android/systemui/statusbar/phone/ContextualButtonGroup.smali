.class public Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;
.super Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.source "ContextualButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;
    }
.end annotation


# instance fields
.field private final mButtonData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyButtonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 45
    const-class p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    return-void
.end method

.method private getContextButtonIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V
    .locals 1

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->attachToGroup(Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;-><init>(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearButton()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->getButton()Lcom/android/systemui/statusbar/phone/ContextualButton;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "ContextualButtonGroup {"

    .line 138
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      getVisibleContextButton(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/statusbar/phone/ContextualButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      isVisible(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      attached(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mButtonData [ "

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    .line 145
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "            "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": markedVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    .line 147
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " alpha="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    .line 149
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const-string p0, "      ]"

    .line 151
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    }"

    .line 152
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getKeyButtonMapper()Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mKeyButtonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    return-object p0
.end method

.method public getVisibleContextButton()Lcom/android/systemui/statusbar/phone/ContextualButton;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setButtonVisibility(IZ)I
    .locals 6

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getContextButtonIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 96
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz p2, :cond_1

    .line 98
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    if-nez v3, :cond_0

    .line 99
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    move v3, v1

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->setVisibility(I)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 108
    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 109
    invoke-interface {p1, p0, p2, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    return p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find the button id of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in context group"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKeyButtonMapper(Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mKeyButtonMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    return-void
.end method

.method public updateIcons()V
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;

    .line 132
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/statusbar/phone/ContextualButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->updateIcon()V

    goto :goto_0

    :cond_0
    return-void
.end method
