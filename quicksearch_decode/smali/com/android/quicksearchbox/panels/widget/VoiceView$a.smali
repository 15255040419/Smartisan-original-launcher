.class public Lcom/android/quicksearchbox/panels/widget/VoiceView$a;
.super Ljava/lang/Object;
.source "VoiceView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/panels/widget/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public final synthetic c:Lcom/android/quicksearchbox/panels/widget/VoiceView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->b:J

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVoiceAssistantServiceConnection onServiceConnected ComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", IBinder= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.VoiceView"

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p2}, Lsmartisanos/app/voiceassistant/IVoiceAssistantService$Stub;->asInterface(Landroid/os/IBinder;)Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lsmartisanos/app/voiceassistant/IVoiceAssistantService;)Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    new-instance p2, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;

    invoke-direct {p2, p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;)Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->h(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVoiceAssistantServiceConnection onServiceDisconnected ComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", and repeat connect num= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.VoiceView"

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->b:J

    sub-long/2addr v2, v4

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "repeatInterval= "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0xa4cb80

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    .line 5
    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->c:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    .line 8
    iget p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->a:I

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;->b:J

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeat connect voice service need waiting: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
