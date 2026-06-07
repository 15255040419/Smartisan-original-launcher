.class public Lb/a/a/m0;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/m0$k;,
        Lb/a/a/m0$m;,
        Lb/a/a/m0$j;,
        Lb/a/a/m0$l;,
        Lb/a/a/m0$n;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/android/quicksearchbox/Corpora;

.field public final e:Lcom/android/quicksearchbox/ShortcutRefresher;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lb/a/a/m0$k;

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lb/a/a/m0$l;->b:Lb/a/a/m0$l;

    iget-object v1, v1, Lb/a/a/m0$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "shortcuts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->j:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lb/a/a/m0$l;->p:Lb/a/a/m0$l;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0$l;->c:Lb/a/a/m0$l;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->k:Ljava/lang/String;

    .line 4
    invoke-static {}, Lb/a/a/m0;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->l:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clicklog INNER JOIN shortcuts ON "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0$j;->c:Lb/a/a/m0$j;

    iget-object v2, v2, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0$l;->b:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->m:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    sget-object v2, Lb/a/a/m0$l;->b:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lb/a/a/m0$l;->c:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lb/a/a/m0$l;->d:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lb/a/a/m0$l;->e:Lb/a/a/m0$l;

    iget-object v3, v3, Lb/a/a/m0$l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_format"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->f:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_text_1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->g:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_text_2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->h:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_text_2_url"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->i:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_icon_1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->j:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_icon_2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->k:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_intent_action"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v0, v4

    sget-object v2, Lb/a/a/m0$l;->l:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->m:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_intent_data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->n:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_intent_query"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->o:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_intent_extra_data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->p:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_shortcut_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->q:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "suggest_spinner_while_refreshing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$l;->r:Lb/a/a/m0$l;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "suggest_log_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sget-object v2, Lb/a/a/m0$l;->s:Lb/a/a/m0$l;

    iget-object v2, v2, Lb/a/a/m0$l;->a:Ljava/lang/String;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sput-object v0, Lb/a/a/m0;->n:[Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lb/a/a/m0$j;->d:Lb/a/a/m0$j;

    iget-object v2, v2, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >= ?1 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0$j;->d:Lb/a/a/m0$j;

    iget-object v2, v2, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < ?2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->o:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    iget-object v2, v2, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->p:Ljava/lang/String;

    .line 9
    sget-object v0, Lb/a/a/m0$j;->c:Lb/a/a/m0$j;

    iget-object v0, v0, Lb/a/a/m0$j;->a:Ljava/lang/String;

    sput-object v0, Lb/a/a/m0;->q:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = (SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb/a/a/m0;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clicklog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/m0;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lb/a/a/m0;->d:Lcom/android/quicksearchbox/Corpora;

    .line 4
    iput-object p4, p0, Lb/a/a/m0;->e:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 5
    iput-object p5, p0, Lb/a/a/m0;->f:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lb/a/a/m0;->g:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p3, Lb/a/a/m0$k;

    const/16 p4, 0x20

    invoke-direct {p3, p1, p7, p4, p2}, Lb/a/a/m0$k;-><init>(Landroid/content/Context;Ljava/lang/String;ILb/a/a/m;)V

    iput-object p3, p0, Lb/a/a/m0;->h:Lb/a/a/m0$k;

    .line 8
    invoke-virtual {p0}, Lb/a/a/m0;->a()V

    .line 9
    iget-object p1, p0, Lb/a/a/m0;->c:Landroid/content/Context;

    const p2, 0x7f0702f4

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/m0;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 3
    invoke-static {p0}, Lb/a/a/m0;->c(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/m0;)Lb/a/a/m0$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m0;->h:Lb/a/a/m0$k;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 9

    .line 5
    new-instance v8, Lb/a/a/m0;

    const-string v7, "qsb-log.db"

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lb/a/a/m0;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-object v8
.end method

.method public static a(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.resource"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "content"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "file"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/quicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lb/a/a/m0;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lb/a/a/m0;Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/m0;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p0

    return p0
.end method

.method public static a(J)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 42
    invoke-static {p0}, Lb/a/a/m0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static b(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 6

    .line 15
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    .line 16
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/m0;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "#"

    .line 23
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_2
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "is_switch"

    .line 31
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "switch_key"

    .line 33
    invoke-interface {v0, p0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int v1, v0, v1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {v3, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lb/a/a/m0;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/m0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 2
    sget-object v0, Lb/a/a/m0;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method public static c(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;
    .locals 13

    .line 3
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/m0;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {p0}, Lb/a/a/m0;->b(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lb/a/a/m0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lb/a/a/m0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 14
    :try_start_0
    invoke-interface {v10}, Lcom/android/quicksearchbox/SuggestionExtras;->toJsonString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not flatten extras to JSON from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "QSB.SRIL"

    invoke-static {v12, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v10, 0x0

    .line 16
    :goto_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 17
    sget-object v12, Lb/a/a/m0$l;->b:Lb/a/a/m0$l;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v7, Lb/a/a/m0$l;->c:Lb/a/a/m0$l;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v6, Lb/a/a/m0$l;->d:Lb/a/a/m0$l;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/quicksearchbox/Source;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    sget-object v5, Lb/a/a/m0$l;->e:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v5, Lb/a/a/m0$l;->f:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v5, Lb/a/a/m0$l;->g:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v5, Lb/a/a/m0$l;->h:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v5, Lb/a/a/m0$l;->i:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v5, Lb/a/a/m0$l;->j:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v5, Lb/a/a/m0$l;->k:Lb/a/a/m0$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lb/a/a/m0$l;->l:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lb/a/a/m0$l;->m:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lb/a/a/m0$l;->n:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lb/a/a/m0$l;->o:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lb/a/a/m0$l;->p:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lb/a/a/m0$l;->q:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    sget-object v0, Lb/a/a/m0$l;->r:Lb/a/a/m0$l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object p0, Lb/a/a/m0$l;->s:Lb/a/a/m0$l;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static synthetic c(Lb/a/a/m0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/m0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lb/a/a/m0$m;->c:Lb/a/a/m0$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v3, Lb/a/a/m0$m;->d:[Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lb/a/a/m0$m;->c:Lb/a/a/m0$m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " >= $1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DESC"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string v2, "sourcetotals"

    .line 5
    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Collection;ZJ)Lb/a/a/k0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;ZJ)",
            "Lb/a/a/k0;"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/m0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/m0;->b:Ljava/lang/String;

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4, p5}, Lb/a/a/m0;->a(J)[Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p1, p4, p5}, Lb/a/a/m0;->a(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object p4

    .line 25
    :goto_1
    iget-object p5, p0, Lb/a/a/m0;->h:Lb/a/a/m0$k;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    .line 26
    invoke-virtual {p5, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 27
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result p5

    if-nez p5, :cond_2

    .line 28
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_2
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 31
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Source;

    .line 32
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33
    :cond_4
    new-instance p2, Lb/a/a/k0;

    new-instance v4, Lb/a/a/m0$n;

    invoke-direct {v4, p0, p5, p1, p4}, Lb/a/a/m0$n;-><init>(Lb/a/a/m0;Ljava/util/HashMap;Ljava/lang/String;Landroid/database/Cursor;)V

    iget-object v6, p0, Lb/a/a/m0;->f:Landroid/os/Handler;

    iget-object v7, p0, Lb/a/a/m0;->e:Lcom/android/quicksearchbox/ShortcutRefresher;

    move-object v3, p2

    move v5, p3

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lb/a/a/k0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;ZLandroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    return-object p2
.end method

.method public a(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lb/a/a/m0;->h:Lb/a/a/m0$k;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    sget-object v1, Lb/a/a/m0;->l:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 47
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lb/a/a/m0$m;->b:Lb/a/a/m0$m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lb/a/a/m0$m;->c:Lb/a/a/m0$m;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    throw v0
.end method

.method public final a()V
    .locals 14

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?3 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb/a/a/m;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    iget-object v3, v3, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUM(("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    iget-object v4, v4, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") / 1000)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    iget-object v4, v4, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " >= (? - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb/a/a/m;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lb/a/a/m0;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    iget-object v4, v4, Lb/a/a/m0$j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 12
    sget-object v7, Lb/a/a/m0;->m:Ljava/lang/String;

    sget-object v8, Lb/a/a/m0;->n:[Ljava/lang/String;

    sget-object v10, Lb/a/a/m0;->q:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/m0;->a:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lb/a/a/m0;->o:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lb/a/a/m0;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DESC, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 16
    sget-object v7, Lb/a/a/m0;->m:Ljava/lang/String;

    sget-object v8, Lb/a/a/m0;->n:[Ljava/lang/String;

    sget-object v10, Lb/a/a/m0;->q:Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/m0;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Lb/a/a/n1/a0;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lb/a/a/m0;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/a/a/m0$a;

    invoke-direct {v1, p0, p1}, Lb/a/a/m0$a;-><init>(Lb/a/a/m0;Lb/a/a/n1/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/a/n1/z<",
            "TA;>;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lb/a/a/m0;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/a/a/m0$b;

    invoke-direct {v1, p0, p1, p2}, Lb/a/a/m0$b;-><init>(Lb/a/a/m0;Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    .line 34
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    if-eqz p3, :cond_1

    .line 35
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p3, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 37
    invoke-static {p3}, Lb/a/a/m0;->c(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 38
    :goto_1
    new-instance p3, Lb/a/a/m0$h;

    invoke-direct {p3, p0, p1, p2, v0}, Lb/a/a/m0$h;-><init>(Lb/a/a/m0;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lb/a/a/m0;->a(Lb/a/a/n1/a0;)V

    return-void

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shortcutId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V
    .locals 4

    .line 61
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 62
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p2, p0, Lb/a/a/m0;->d:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/quicksearchbox/Corpora;->getCorpusForSource(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "QSB.SRIL"

    const-string p2, "no corpus for clicked suggestion"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lb/a/a/m0;->e:Lcom/android/quicksearchbox/ShortcutRefresher;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    .line 66
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRefresher;->markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lb/a/a/m0;->c(Lcom/android/quicksearchbox/Suggestion;)Landroid/content/ContentValues;

    move-result-object v0

    .line 69
    sget-object v1, Lb/a/a/m0$l;->b:Lb/a/a/m0$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 71
    sget-object v3, Lb/a/a/m0$j;->c:Lb/a/a/m0$j;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lb/a/a/m0$j;->d:Lb/a/a/m0$j;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    sget-object p1, Lb/a/a/m0$j;->f:Lb/a/a/m0$j;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lb/a/a/m0$i;

    invoke-direct {p1, p0, v0, v2}, Lb/a/a/m0$i;-><init>(Lb/a/a/m0;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1}, Lb/a/a/m0;->a(Lb/a/a/n1/a0;)V

    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2

    .line 19
    iget-object v0, p0, Lb/a/a/m0;->e:Lcom/android/quicksearchbox/ShortcutRefresher;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    .line 20
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-interface {v0, v1, p1}, Lcom/android/quicksearchbox/ShortcutRefresher;->shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lb/a/a/m;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/m0;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/a/a/m0$k;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/m0;->h:Lb/a/a/m0$k;

    return-object v0
.end method

.method public clearHistory()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/m0$e;

    invoke-direct {v0, p0}, Lb/a/a/m0$e;-><init>(Lb/a/a/m0;)V

    invoke-virtual {p0, v0}, Lb/a/a/m0;->a(Lb/a/a/n1/a0;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/m0;->c()Lb/a/a/m0$k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a/a/m0$g;

    invoke-direct {v0, p0}, Lb/a/a/m0$g;-><init>(Lb/a/a/m0;)V

    invoke-virtual {p0, v0, p1}, Lb/a/a/m0;->a(Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;Z",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Lb/a/a/k0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    iget-object v8, p0, Lb/a/a/m0;->g:Ljava/util/concurrent/Executor;

    new-instance v9, Lb/a/a/m0$f;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lb/a/a/m0$f;-><init>(Lb/a/a/m0;Ljava/lang/String;Ljava/util/Collection;ZJLcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a/a/m0$c;

    invoke-direct {v0, p0}, Lb/a/a/m0$c;-><init>(Lb/a/a/m0;)V

    invoke-virtual {p0, v0, p1}, Lb/a/a/m0;->a(Lb/a/a/n1/z;Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 2
    invoke-static {p1}, Lb/a/a/m0;->b(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lb/a/a/m0$d;

    invoke-direct {p2, p0, p1}, Lb/a/a/m0$d;-><init>(Lb/a/a/m0;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lb/a/a/m0;->a(Lb/a/a/n1/a0;)V

    return-void
.end method

.method public reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lb/a/a/m0;->a(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V

    return-void
.end method

.method public updateShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/m0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method
