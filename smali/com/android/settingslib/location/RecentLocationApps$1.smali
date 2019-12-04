.class Lcom/android/settingslib/location/RecentLocationApps$1;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/RecentLocationApps$Request;",
        ">;"
    }
.end annotation


# virtual methods
.method public compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I
    .locals 2

    .line 167
    iget-wide p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    iget-wide v0, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 164
    check-cast p1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    check-cast p2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/location/RecentLocationApps$1;->compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I

    move-result p0

    return p0
.end method
