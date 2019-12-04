.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/SettingsSearchResult;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.source "SettingsSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult<",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final getItemColumns()[Ljava/lang/String;
    .locals 3

    const-string p0, "menu_name"

    const-string v0, "menu_icon"

    const-string v1, "menu_path"

    const-string v2, "description"

    .line 13
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final getResultType()Ljava/lang/String;
    .locals 0

    const-string p0, "Settings"

    return-object p0
.end method

.method protected final getResultVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method protected bridge synthetic transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SettingsSearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;)[Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuIconStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p0, v0

    return-object p0
.end method
