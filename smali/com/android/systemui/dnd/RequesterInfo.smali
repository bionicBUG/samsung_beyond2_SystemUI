.class public Lcom/android/systemui/dnd/RequesterInfo;
.super Ljava/lang/Object;
.source "RequesterInfo.java"


# instance fields
.field private mTaskId:I

.field private mType:I
    .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
    .end annotation
.end field

.field private mWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/systemui/dnd/RequesterInfo;->mType:I

    .line 20
    iput p2, p0, Lcom/android/systemui/dnd/RequesterInfo;->mWindowingMode:I

    .line 21
    iput p3, p0, Lcom/android/systemui/dnd/RequesterInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/dnd/RequesterInfo;->mTaskId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/dnd/RequesterInfo;->mType:I

    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/dnd/RequesterInfo;->mWindowingMode:I

    return p0
.end method
