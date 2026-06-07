.class public interface abstract Lkotlin/time/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/TimeSource$a;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/TimeSource$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/time/TimeSource$a;->a:Lkotlin/time/TimeSource$a;

    sput-object v0, Lkotlin/time/TimeSource;->Companion:Lkotlin/time/TimeSource$a;

    return-void
.end method


# virtual methods
.method public abstract markNow()Ld/w/a;
.end method
