.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;
.source "SettingsSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem$Builder;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private final menuIcon:Landroid/net/Uri;

.field private final menuName:Ljava/lang/String;

.field private menuPath:Ljava/lang/String;


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMenuIconStr()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuIcon:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuName:Ljava/lang/String;

    return-object p0
.end method

.method public getMenuPath()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuPath:Ljava/lang/String;

    return-object p0
.end method
