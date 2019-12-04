.class public interface abstract Lcom/android/systemui/indexsearch/Searchable;
.super Ljava/lang/Object;
.source "Searchable.java"


# virtual methods
.method public abstract getIconUri()Landroid/net/Uri;
.end method

.method public abstract getSearchDescription()Ljava/lang/String;
.end method

.method public abstract getSearchTitle()Ljava/lang/String;
.end method

.method public abstract getSearchWords()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getTileSpecForAction()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
