.class public Lcom/android/systemui/statusbar/IndicationItem;
.super Ljava/lang/Object;
.source "IndicationItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/statusbar/IndicationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mDurationTime:J

.field private mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

.field private mIsAnimation:Z

.field private mItemId:I

.field private mPriority:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 50
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 51
    iput-object p3, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 52
    iput-object p4, p0, Lcom/android/systemui/statusbar/IndicationItem;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 53
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    .line 54
    iput-wide p5, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/IndicationItem;)I
    .locals 2

    .line 103
    iget v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    iget v1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    if-ne v0, v1, :cond_0

    .line 104
    iget p1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    iget p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/IndicationItem;->compareTo(Lcom/android/systemui/statusbar/IndicationItem;)I

    move-result p0

    return p0
.end method

.method public getDurationTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    return-wide v0
.end method

.method public getEventType()Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    return-object p0
.end method

.method public getItemId()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isAnimation()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    return p0
.end method

.method public isPersistantEvent()Z
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|pr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|txt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ti=duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PERSISTENT"

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|an="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
