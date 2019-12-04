.class public final enum Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;
.super Ljava/lang/Enum;
.source "SmartCropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERACTION_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

.field public static final enum PEN_HOVERING:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

.field public static final enum TOUCH:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TOUCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->TOUCH:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    .line 66
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    const/4 v3, 0x2

    const-string v4, "PEN_HOVERING"

    invoke-direct {v0, v4, v2, v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->PEN_HOVERING:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    new-array v0, v3, [Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    .line 62
    sget-object v3, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->TOUCH:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->PEN_HOVERING:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;->ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
