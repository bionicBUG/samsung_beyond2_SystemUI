.class public Lcom/android/keyguard/punchhole/VIDirectorFactory;
.super Ljava/lang/Object;
.source "VIDirectorFactory.java"


# static fields
.field public static final VENDOR_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.product.vendor.name"

    .line 25
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVIDirector(Landroid/content/Context;)Lcom/android/keyguard/punchhole/VIDirector;
    .locals 2

    .line 28
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond0;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 30
    :cond_0
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 32
    :cond_1
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyond2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyond2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyond2;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 34
    :cond_2
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "beyondx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 36
    :cond_3
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a30c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA30C;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA30C;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 38
    :cond_4
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a30"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "m30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "r3"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 42
    :cond_5
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a60q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "m40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string/jumbo v1, "xcoverpro"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    .line 45
    :cond_6
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA40;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA40;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 47
    :cond_7
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA20;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA20;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 49
    :cond_8
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a10e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA10E;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA10E;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 51
    :cond_9
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "m10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 53
    :cond_a
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a8s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA8S;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA8S;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 55
    :cond_b
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "m20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorM20;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorM20;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 57
    :cond_c
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "d1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorDavinci1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorDavinci1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 59
    :cond_d
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorDavinci2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorDavinci2;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 61
    :cond_e
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA10S;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA10S;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 63
    :cond_f
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "r5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorR5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorR5;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 65
    :cond_10
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a51"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "r7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "a71"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_0

    .line 68
    :cond_11
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string/jumbo v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 69
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorX1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorX1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 70
    :cond_12
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string/jumbo v1, "y2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorY2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorY2;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 72
    :cond_13
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    const-string v1, "bloom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 73
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorBloom;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorBloom;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 76
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Factory"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no VIDirector corresponding to the vendor name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_15
    :goto_0
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA51;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA51;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 52
    :cond_16
    :goto_1
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA10;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 44
    :cond_17
    :goto_2
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA60Q;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA60Q;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 41
    :cond_18
    :goto_3
    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorA50;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/VIDirectorA50;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
