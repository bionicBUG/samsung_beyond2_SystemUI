.class final enum Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
.super Ljava/lang/Enum;
.source "QSBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ERR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 100
    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v3, 0x2

    const-string v4, "STORAGE_FULL"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v4, 0x3

    const-string v5, "INVALID_DATA"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v5, 0x4

    const-string v6, "PARTIAL_SUCCESS"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v5, v7}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 99
    sget-object v6, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    .line 104
    iput p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 99
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    return p0
.end method
