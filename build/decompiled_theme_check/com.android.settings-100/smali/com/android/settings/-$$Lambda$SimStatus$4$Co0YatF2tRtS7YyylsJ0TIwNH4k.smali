.class public final synthetic Lcom/android/settings/-$$Lambda$SimStatus$4$Co0YatF2tRtS7YyylsJ0TIwNH4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/SimStatus$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SimStatus$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$SimStatus$4$Co0YatF2tRtS7YyylsJ0TIwNH4k;->f$0:Lcom/android/settings/SimStatus$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$SimStatus$4$Co0YatF2tRtS7YyylsJ0TIwNH4k;->f$0:Lcom/android/settings/SimStatus$4;

    invoke-virtual {p0}, Lcom/android/settings/SimStatus$4;->lambda$onNrIconType$1$SimStatus$4()V

    return-void
.end method
