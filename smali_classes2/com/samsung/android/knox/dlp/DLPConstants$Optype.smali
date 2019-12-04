.class public final enum Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
.super Ljava/lang/Enum;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dlp/DLPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Optype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/dlp/DLPConstants$Optype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 136
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v1, 0x0

    const-string v2, "GETTEMPLATE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    .line 137
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v2, 0x1

    const-string v3, "DOPROTECT"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    .line 138
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v3, 0x2

    const-string v4, "CONSUME"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    .line 139
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v4, 0x3

    const-string v5, "GETATTRIBUTES"

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    .line 135
    sget-object v5, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->$VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    .locals 1

    .line 135
    const-class v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    .locals 1

    .line 135
    sget-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->$VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-object v0
.end method
