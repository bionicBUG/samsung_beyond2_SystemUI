.class public final synthetic Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    iput-object p2, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$1:Ljava/lang/String;

    iput p3, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$1:Ljava/lang/String;

    iget p0, p0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;->f$2:I

    invoke-virtual {v0, v1, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->lambda$onCustomTileListChanged$4$QSMiscContainer(Ljava/lang/String;I)V

    return-void
.end method
