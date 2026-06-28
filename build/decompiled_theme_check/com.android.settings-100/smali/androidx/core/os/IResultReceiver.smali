.class public interface abstract Landroidx/core/os/IResultReceiver;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/IResultReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
