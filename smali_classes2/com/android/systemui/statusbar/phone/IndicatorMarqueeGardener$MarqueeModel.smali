.class Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;
.super Ljava/lang/Object;
.source "IndicatorMarqueeGardener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarqueeModel"
.end annotation


# instance fields
.field private Direction:I

.field private HorizontalShift:I

.field private MaxShiftSize:I

.field private ShiftBottom:I

.field private ShiftLeft:I

.field private ShiftRight:I

.field private ShiftTop:I

.field private VerticalShift:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->Direction:I

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->HorizontalShift:I

    .line 144
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->VerticalShift:I

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftLeft:I

    .line 146
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftTop:I

    .line 147
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftRight:I

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftBottom:I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->MaxShiftSize:I

    return-void
.end method


# virtual methods
.method public copyShiftValues()Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;
    .locals 2

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getMaxShiftSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftLeft(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftTop(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftRight(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftBottom()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftBottom(I)V

    return-object v0
.end method

.method public getDirection()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->Direction:I

    return p0
.end method

.method public getHorizontalShift()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->HorizontalShift:I

    return p0
.end method

.method public getMaxShiftSize()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->MaxShiftSize:I

    return p0
.end method

.method public getShiftBottom()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftBottom:I

    return p0
.end method

.method public getShiftLeft()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftLeft:I

    return p0
.end method

.method public getShiftRight()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftRight:I

    return p0
.end method

.method public getShiftTop()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftTop:I

    return p0
.end method

.method public getVerticalShift()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->VerticalShift:I

    return p0
.end method

.method public hasSameShiftValues(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;)Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftBottom()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftBottom()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToReverseDirection()Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->HorizontalShift:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->MaxShiftSize:I

    if-gt v0, p0, :cond_1

    neg-int p0, p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public printShiftValues(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->Direction:I

    return-void
.end method

.method public setHorizontalShift(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->HorizontalShift:I

    return-void
.end method

.method public setMaxShiftSize(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->MaxShiftSize:I

    return-void
.end method

.method public setShiftBottom(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftBottom:I

    return-void
.end method

.method public setShiftLeft(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftLeft:I

    return-void
.end method

.method public setShiftRight(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftRight:I

    return-void
.end method

.method public setShiftTop(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->ShiftTop:I

    return-void
.end method

.method public setVerticalShift(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->VerticalShift:I

    return-void
.end method
