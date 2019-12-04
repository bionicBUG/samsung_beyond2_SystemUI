.class Lcom/android/launcher3/icons/cache/BaseIconCache$1;
.super Ljava/util/AbstractMap;
.source "BaseIconCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/android/launcher3/util/ComponentKey;",
        "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
        ">;"
    }
.end annotation


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            ">;>;"
        }
    .end annotation

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    check-cast p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache$1;->put(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p0

    return-object p0
.end method
