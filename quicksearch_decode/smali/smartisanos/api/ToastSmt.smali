.class public Lsmartisanos/api/ToastSmt;
.super Ljava/lang/Object;
.source "ToastSmt.java"

.field private static final sInstance:Lsmartisanos/api/ToastSmt;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/ToastSmt;

    invoke-direct {v0}, Lsmartisanos/api/ToastSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/ToastSmt;->sInstance:Lsmartisanos/api/ToastSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/ToastSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/ToastSmt;->sInstance:Lsmartisanos/api/ToastSmt;

    return-object v0
.end method

.method public makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    return-object p1
.end method
