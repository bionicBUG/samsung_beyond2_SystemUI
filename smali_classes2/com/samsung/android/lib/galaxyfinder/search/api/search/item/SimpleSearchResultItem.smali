.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;
.source "SimpleSearchResultItem.java"


# instance fields
.field final mGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V

    .line 13
    iput-object p5, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;->mGroup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;->mGroup:Ljava/lang/String;

    return-object p0
.end method
