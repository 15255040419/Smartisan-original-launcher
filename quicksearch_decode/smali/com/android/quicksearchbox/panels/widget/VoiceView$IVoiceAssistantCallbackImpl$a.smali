.class public Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;
.super Ljava/lang/Object;
.source "VoiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;->onError(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    iput-boolean p3, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b()V

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->m(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    :goto_0
    return-void
.end method
