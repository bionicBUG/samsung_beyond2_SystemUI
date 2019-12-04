.class Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;
.super Ljava/lang/Object;
.source "CarrierPlmnHomeInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityModel"
.end annotation


# instance fields
.field final CalculatedVisible:Z

.field final HasNotiIcon:Z

.field final HeadsUpFlag:Z

.field final ParameterVisible:Z

.field final RealTextString:Ljava/lang/String;

.field final RealVisible:I

.field final TimeoutFlag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;ZZZZZLjava/lang/CharSequence;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->ParameterVisible:Z

    .line 400
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->CalculatedVisible:Z

    .line 401
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->TimeoutFlag:Z

    .line 402
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HeadsUpFlag:Z

    .line 403
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HasNotiIcon:Z

    if-eqz p7, :cond_0

    .line 404
    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealTextString:Ljava/lang/String;

    .line 405
    iput p8, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealVisible:I

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisibilityModel"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ParameterVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->ParameterVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CalculatedVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->CalculatedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TimeoutFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->TimeoutFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", HeadsUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HeadsUpFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", HasNotiIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HasNotiIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RealVisible(V0:I4:G8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealVisible:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RealTextString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealTextString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEquals(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 410
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->ParameterVisible:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->ParameterVisible:Z

    if-ne v1, v2, :cond_1

    return v0

    .line 411
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->CalculatedVisible:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->CalculatedVisible:Z

    if-ne v1, v2, :cond_2

    return v0

    .line 412
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->TimeoutFlag:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->TimeoutFlag:Z

    if-ne v1, v2, :cond_3

    return v0

    .line 413
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HeadsUpFlag:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HeadsUpFlag:Z

    if-ne v1, v2, :cond_4

    return v0

    .line 414
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HasNotiIcon:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->HasNotiIcon:Z

    if-ne v1, v2, :cond_5

    return v0

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealTextString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealTextString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 416
    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealVisible:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->RealVisible:I

    if-ne p0, p1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method
