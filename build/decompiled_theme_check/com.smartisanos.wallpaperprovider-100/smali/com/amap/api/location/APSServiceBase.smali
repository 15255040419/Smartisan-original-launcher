.class public interface abstract Lcom/amap/api/location/APSServiceBase;
.super Ljava/lang/Object;
.source "APSServiceBase.java"


# static fields
.field public static final GPSFUSION:I = 0x4

.field public static final INIT:I = 0x0

.field public static final LOCATION:I = 0x1

.field public static final OFFLOCFUSION:I = 0x5

.field public static final STARTCOLL:I = 0x6

.field public static final STARTSCOKET:I = 0x2

.field public static final STOPSCOKET:I = 0x3


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onStartCommand(Landroid/content/Intent;II)I
.end method
