.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$Builder;,
        Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:Landroid/net/Uri;

.field private final itemKey:Ljava/lang/String;

.field private final payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

.field private final text:Ljava/lang/String;

.field private final text2:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->itemKey:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text2:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->icon:Landroid/net/Uri;

    .line 45
    iput-object p5, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    if-eqz p5, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view payload must be not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemKey must be not null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getActionLabel(I)Ljava/lang/String;
    .locals 1

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->label:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to get action label: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultItem"

    invoke-static {p1, p0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActionPayloadStr(I)Ljava/lang/String;
    .locals 1

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;

    invoke-interface {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;->getStringFromPayload()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to get action payload: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultItem"

    invoke-static {p1, p0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getGroup()Ljava/lang/String;
.end method

.method public getIconStr()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->icon:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemKey()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->itemKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPayloadStr()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->getStringFromPayload()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getText2()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text2:Ljava/lang/String;

    return-object p0
.end method
