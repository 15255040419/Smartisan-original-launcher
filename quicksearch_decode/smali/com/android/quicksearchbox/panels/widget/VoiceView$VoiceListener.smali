.class public interface abstract Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;
.super Ljava/lang/Object;
.source "VoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/panels/widget/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceListener"
.end annotation


# virtual methods
.method public abstract onRecordStop()V
.end method

.method public abstract onVoiceCancel()V
.end method

.method public abstract onVoiceCompleted(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
.end method

.method public abstract onVoiceStart()V
.end method
