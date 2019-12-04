.class Lcom/android/settingslib/location/RecentLocationAccesses$1;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
        ">;"
    }
.end annotation


# virtual methods
.method public compare(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)I
    .locals 2

    .line 146
    iget-wide p0, p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    iget-wide v0, p2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    check-cast p2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/location/RecentLocationAccesses$1;->compare(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)I

    move-result p0

    return p0
.end method
