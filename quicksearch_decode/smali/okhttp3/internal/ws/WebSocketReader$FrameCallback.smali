.class public interface abstract Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onReadClose(ILjava/lang/String;)V
.end method

.method public abstract onReadMessage(Lg/d;)V
.end method

.method public abstract onReadMessage(Ljava/lang/String;)V
.end method

.method public abstract onReadPing(Lg/d;)V
.end method

.method public abstract onReadPong(Lg/d;)V
.end method
