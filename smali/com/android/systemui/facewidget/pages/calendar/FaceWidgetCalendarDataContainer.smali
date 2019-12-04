.class public final Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarDataContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILandroid/database/Cursor;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->copyFrom(ILandroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->copyFrom(Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public copyFrom(ILandroid/database/Cursor;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    .line 95
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 97
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;

    invoke-direct {v0, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->add(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;

    invoke-direct {v0, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->add(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public copyFrom(Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 79
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 81
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;

    invoke-direct {v1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->add(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;

    invoke-direct {v1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->add(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    invoke-direct {v3, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetTimeForDay(JJ)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    .line 129
    instance-of v2, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;

    if-eqz v2, :cond_0

    .line 130
    check-cast v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEvent;->resetTimeForDay(JJ)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public sort()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method toBundleList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    .line 113
    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 115
    instance-of v1, v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarTask;

    const-string/jumbo v3, "type"

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 116
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 118
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
