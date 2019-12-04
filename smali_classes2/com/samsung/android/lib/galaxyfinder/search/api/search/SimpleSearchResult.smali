.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.source "SimpleSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult<",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResultType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final getItemColumns()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected final getResultType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "basic"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method protected final getResultVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method protected bridge synthetic transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;)[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method
