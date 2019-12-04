.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 -Platform.kt\nokio/-Platform\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n28#2:217\n28#2:218\n28#2:219\n186#3,30:220\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n163#1:217\n189#1:218\n189#1:219\n199#1,30:220\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private foldedSink:Lokio/Sink;

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field private sinkClosed:Z

.field private sourceClosed:Z


# virtual methods
.method public final getBuffer$okio()Lokio/Buffer;
    .locals 0

    .line 37
    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    return-object p0
.end method

.method public final getFoldedSink$okio()Lokio/Sink;
    .locals 0

    .line 40
    iget-object p0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object p0
.end method

.method public final getMaxBufferSize$okio()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    return-wide v0
.end method

.method public final getSinkClosed$okio()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lokio/Pipe;->sinkClosed:Z

    return p0
.end method

.method public final getSourceClosed$okio()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lokio/Pipe;->sourceClosed:Z

    return p0
.end method

.method public final setSinkClosed$okio(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$okio(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .locals 0

    .line 47
    iget-object p0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object p0
.end method
