.class public Landroid/app/enterprise/DatafadeInfo;
.super Ljava/lang/Object;
.source "DatafadeInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/DatafadeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentState:I

.field public db_id:I

.field public id:J

.field public timeDurationToPromptAuth:I

.field public timeDurationToWaitForAuthInput:I

.field public totalValidAuthAttempts:I

.field public validAuthAttemptsDone:I

.field public wipeTypeMetaData:Ljava/lang/String;

.field public wipeTypeWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 317
    new-instance v0, Landroid/app/enterprise/DatafadeInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/DatafadeInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/DatafadeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    .line 117
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    .line 131
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    .line 143
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    .line 153
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    .line 173
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    const-wide/16 v1, -0x1

    .line 177
    iput-wide v1, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    .line 179
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    const/4 v3, 0x0

    .line 215
    iput v3, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    .line 217
    iput v3, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    .line 219
    iput v3, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    const/4 v4, 0x3

    .line 221
    iput v4, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    const-string v4, ""

    .line 223
    iput-object v4, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    const/4 v4, 0x1

    .line 225
    iput v4, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    .line 227
    iput v3, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    .line 229
    iput-wide v1, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    .line 231
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    .line 117
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    .line 131
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    .line 143
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    .line 153
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    .line 173
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    const-wide/16 v1, -0x1

    .line 177
    iput-wide v1, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    .line 179
    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    .line 341
    invoke-virtual {p0, p1}, Landroid/app/enterprise/DatafadeInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/DatafadeInfo$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/app/enterprise/DatafadeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 301
    iget p0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    check-cast p1, Landroid/app/enterprise/DatafadeInfo;

    iget p1, p1, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEIGHT_TYPE_ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,TIME_DURATION_TO_PROMPT_AUTH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TIME_DURATION_TO_WAIT_FOR_AUTH_INPUT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", VALID_AUTH_ATTEMPTS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", WIPE_TYPE_META_DATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 351
    iget p2, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget p2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget p2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget p2, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget p2, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object p0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
