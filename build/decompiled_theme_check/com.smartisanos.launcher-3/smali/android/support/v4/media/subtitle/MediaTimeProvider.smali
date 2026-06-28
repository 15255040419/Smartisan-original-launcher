.class public interface abstract Landroid/support/v4/media/subtitle/MediaTimeProvider;
.super Ljava/lang/Object;
.source "MediaTimeProvider.java"


# static fields
.field public static final NO_TIME:J = -0x1L


# virtual methods
.method public abstract cancelNotifications(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract getCurrentTimeUs(ZZ)J
.end method

.method public abstract notifyAt(JLandroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract scheduleUpdate(Landroid/support/v4/media/subtitle/MediaTimeProvider$OnMediaTimeListener;)V
.end method
