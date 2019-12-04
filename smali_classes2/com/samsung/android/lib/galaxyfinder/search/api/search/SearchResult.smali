.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;

.field private totalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->query:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    return-void
.end method

.method private _getItemColumns()[Ljava/lang/String;
    .locals 12

    const-string v0, "key"

    const-string v1, "icon"

    const-string v2, "text"

    const-string v3, "text2"

    const-string v4, "group"

    const-string v5, "view_payload"

    const-string v6, "action1_label"

    const-string v7, "action1_payload"

    const-string v8, "action2_label"

    const-string v9, "action2_payload"

    const-string v10, "action3_label"

    const-string v11, "action3_payload"

    .line 56
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private _transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 p0, 0xc

    new-array p0, p0, [Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getItemKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getIconStr()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p0, v2

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p0, v3

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getText2()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, p0, v4

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getGroup()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, p0, v4

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getPayloadStr()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, p0, v4

    .line 67
    invoke-virtual {p1, v1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, p0, v4

    .line 68
    invoke-virtual {p1, v1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    .line 69
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    .line 70
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    .line 71
    invoke-virtual {p1, v3}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    .line 72
    invoke-virtual {p1, v3}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    aput-object p1, p0, v0

    return-object p0
.end method

.method private static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([TB;[TB;)[TB;"
        }
    .end annotation

    .line 42
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 43
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private final getCursorColumns()[Ljava/lang/String;
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->_getItemColumns()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getItemColumns()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private final getCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->_transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getQuery()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->query:Ljava/lang/String;

    return-object p0
.end method

.method private final getResultItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    return-object p0
.end method

.method private getTotalCount()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    return p0
.end method


# virtual methods
.method public final addResultItem(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getItemColumns()[Ljava/lang/String;
.end method

.method protected abstract getResultType()Ljava/lang/String;
.end method

.method protected abstract getResultVersion()Ljava/lang/String;
.end method

.method public final setTotalCount(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    return-void
.end method

.method public final toResultCursor()Landroid/database/Cursor;
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getCursorColumns()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2.0.0"

    aput-object v3, v1, v2

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getResultType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getResultVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getTotalCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    array-length v2, v0

    .line 29
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 32
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getResultItems()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;

    .line 36
    invoke-direct {p0, v1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected abstract transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
